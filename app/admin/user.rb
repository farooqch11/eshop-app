ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation,:role

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end


end
