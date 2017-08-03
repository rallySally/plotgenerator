class PersonController < ApplicationController
  def index
    @name='blub'
    @age=1234
    @gender='klingon'
    @job='nichts'
    @color='red'
    @hairlength='green'
  end
end
