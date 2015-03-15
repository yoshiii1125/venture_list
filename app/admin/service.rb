ActiveAdmin.register Service do
  permit_params :name, :description, :fund_id, :status_id, :web_url, :source_id
end
