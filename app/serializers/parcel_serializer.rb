class ParcelSerializer < ActiveModel::Serializer
  attributes :id, :recipient_address, :recipient_contact, :recipient_name, :weight, :from, :destination, :totalcost,
             :user_id
end
