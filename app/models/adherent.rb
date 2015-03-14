class Adherent < ActiveRecord::Base
  include BCrypt
  SEXE = {'Masculin' => 1, 'Feminin' => 2}

  MATRIMONIAL = {
      "Célibataire" => 1,
      "Marié(e)" => 2,
      "Divorcé(e)" => 3,
      "Veuf(ve)" => 4
  }

  STATUS = {'Inactif' => 1, 'Actif' => 2, 'Suspendu' => 3}

  enum affiliation: [:pere, :fils, :fille, :mere, :epoux, :epouse, :aucune_relation]

  belongs_to :parrain, foreign_key: :parrain_id, class_name: Adherent
  has_many :adherents
  has_many :affiliations, through: :adherents

  attr_accessor :password_txt, :password_txt_confirmation
  before_save :encrypt_password
  before_create :generate_matricule
  before_create :set_matricule

  validates_confirmation_of :password_txt
  validates_presence_of :password_txt, :on => :create
  #validates_presence_of :matricule
  #validates_uniqueness_of :matricule

#  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.authenticate(matricule, password_txt)
    adherent = find_by_matricule(matricule)
    if adherent && adherent.password_digest == BCrypt::Engine.hash_secret(password_txt, adherent.password_salt)
      adherent
    else
      nil
    end
  end

  def encrypt_password
    if password_txt.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_digest = BCrypt::Engine.hash_secret(password_txt, password_salt)
    end
  end

  def generate_matricule
    last_adherent = Adherent.count
    current_date = Date.today.strftime('%Y%m%d')
    self.matricule = current_date+''+(last_adherent+1).to_s.rjust(6,'0')
  end

  def set_matricule
    self.status = 3
  end


  def full_name
    nom+" "+prenom
  end

end
