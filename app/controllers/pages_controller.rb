class PagesController < ApplicationController
  def home
  end

  def search
    @contacts = Contact.all

    @results = []

    unless params[:search].blank?
      @results = @contacts.where("meno LIKE ? OR priezvisko LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").order(priezvisko: :asc)
      @message = "Boli nájdené tieto výsledky:"
    else
      @message = "Nezadané žiadne kľúčové slovo."
    end

  end


  def about
  end
end
