require 'oj'

class WhatevsController < ApplicationController

  def api
    @whatevs = Whatev.all
    respond_to do |format|
      format.html { render :layout => false }
      format.json { render :json => Oj.dump(@whatevs.map{|w| {foo: w.foo, bar: w.bar}}) }
    end
  end

  def index
  end

end
