json.array!(@micro_assurances) do |micro_assurance|
  json.extract! micro_assurance, :id
  json.url micro_assurance_url(micro_assurance, format: :json)
end
