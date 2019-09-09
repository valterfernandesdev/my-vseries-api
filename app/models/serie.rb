class Serie < ApplicationRecord
    belongs_to :genre

    # def as_json(options={})
    #     super(
    #         root: true,
    #         only: [:id, :name, :status, :img ],
    #         include: { genre: { only: [:id, :name] } }
    #     )
    # end
end
