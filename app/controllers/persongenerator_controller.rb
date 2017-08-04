class PersongeneratorController < ApplicationController
  skip_before_action :authorize
  def generator; end

  def index
    @names = Name.where(isSurname: false)
    @surnames = Name.where(isSurname: true)
    $pickedName = @names[rand(@names.count)]
    @nameCount = Name.where(isSurname: false).count
    @genders = ['', 'männlich', 'weiblich']
    @colors = ['blass', 'hell', 'gebräunt', 'dunkel', 'kotz grün', 'schweinchen rosa', 'Kellerbräune']
    @hairstyles = ['Lange Mähne', 'Kurzer Igel', 'Undercut', 'Affro', 'Vokuhila', 'schulterlang', 'Pferdeschwanz', 'Glatze', 'Haarkranz', 'Wilde Sturmfrisur']

    @name = $pickedName.name + ' ' + @surnames[rand(@surnames.count)].name
    @age = rand(122)
    @gender = @genders[$pickedName.gender]
    @job = Job.find(rand(1..Job.count)).name
    @skin = @colors[rand(@colors.count)]
    @hair = @hairstyles[rand(@hairstyles.count)]
  end
end
