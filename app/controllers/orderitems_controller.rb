def create
  @orderitem = Orderitem.new(1, 1, 10, 100)

  if @orderitem.save
    format.json { notice: 'Submarine was successfully created.' }
  else
    format.json { render json: @orderitems.errors, status: :unprocessable_entity }
  end
end
