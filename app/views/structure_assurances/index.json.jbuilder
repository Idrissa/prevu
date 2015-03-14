json.array!(@structure_assurances) do |assurance|
  json.extract! assurance, :id, :nom, :adresse, :date_adhesion, :numero_agrement, :couleur, :actif
  json.url assurance_url(assurance, format: :json)
end
