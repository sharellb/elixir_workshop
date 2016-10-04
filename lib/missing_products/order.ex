defmodule Order do
import Ecto.Query, only: [from: 2]
  use Ecto.Schema

  schema "orders" do
    field :first_name, :string
    field :last_name, :string
    field :user_id, :integer
  end

  def query(fname, lname) do
        from o in "orders",
          where: ^fname == o.first_name and o.last_name == ^lname,
          select: o.user_id,
          limit: 3
  end
end
