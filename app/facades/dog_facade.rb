class DogFacade
  def doggies
    @doggies ||= service.get_doggies[:message].map do |dog|
      Dog.new(dog)
    end
  end

  private

  def service
    DogService.new
  end
end