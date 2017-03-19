require 'csv'

# file_path = "CovC_V1.1 - district covariates from acs and ccd master_v1_v_update.csv"
file_path = "MeanC_V1.1 - district means grade equivalent std (gs) (pooled year, grade and sub)_v1_1.csv"

il_rows = []

CSV.foreach(file_path, headers: true) do |row|
  if row["stateabb"] == "IL"
    il_rows << row
  end
end

CSV.open("MeanC_V1.1 - IL ONLY.csv", "wb") do |csv|
  il_rows.each do |il_row|
    csv << il_row
  end
end
