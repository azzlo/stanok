class AddInitialProjectStatus < ActiveRecord::Migration[5.0]
  def up
    ["Inicializado", "Ejecutandose", "Pausado", "Finalizado"].each do |item|
      ProjectStatus.create(name: item)
    end
  end

  def down
    ProjectStatus.delete_all
  end
end
