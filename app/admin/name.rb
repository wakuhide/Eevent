ActiveAdmin.register Name do

permit_params :name, :date
  form do |f|
    # エラー表示枠を表示、シンボルで項目を指定
    f.semantic_errors :name
    # モデルの入力項目を表示
    f.inputs
    # 登録・更新などのボタンの表示
    f.actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
