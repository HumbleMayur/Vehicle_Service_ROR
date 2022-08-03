
class ServiceHistoryPdf < Prawn::Document
  
  Initial_x = 15
  Initial_y = 30
  Lineheight_x = 10
  Lineheight_y = 10

  def initialize(service_history)
    
    super(top_margin:50 )
    @service_history=service_history
    @orderables=Orderable.all
    service_history_number
    line_items
    stroke do
      rectangle [0, 725], 540, 730
    end
    header
    line_items
    order(service_history)
    cc(service_history)
    order(@orderables)
  end


  def service_history_number
  text "Service History: #{@service_history.id}" , size:30 , style: :bold
  end

  def line_items
    move_down 20
    # table cc
 
  end

  def header
    text_box "<b><font size='28'>" + " SSS Vehicle Service </font></b>", :inline_format => true  ,:at =>[Initial_x+140,cursor-20]
    
   
    stroke 
  end  
  
  def order(service_history)  
  bounding_box([0, 620], width: 350) do
    pad(0) { 
      text_box "<i>Service History Id </i> : <b>#{service_history.id}</b>", :inline_format => true ,:at =>[Initial_x,cursor]
      move_down Lineheight_y
      text_box "<i>Customer Id</i> : <b>#{service_history.customer_id}</b>", :inline_format => true ,:at =>[Initial_x,cursor-10]
      move_down Lineheight_y
      move_down 20
      text_box "<i>Product Id</i> : <b>#{service_history.product_id}</b>", :inline_format => true ,:at =>[Initial_x,cursor-10]
      move_down Lineheight_y
      move_down 20
      text_box "<i>Product Id</i> : <b>#{service_history.startdate}</b>", :inline_format => true ,:at =>[Initial_x,cursor-10]
      move_down Lineheight_y
      move_down 20
      # stroke_bounds
    }
    end
  end



  def cc(service_history)
    text_box "<b><font size='22'>" + "</font></b>", :inline_format => true  ,:at =>[Initial_x,cursor]
    move_down 100
    # table_content = ([ ["ID", "Name", "Start Date", "End Date "],
    # [service_history.customer_id, service_history.product.name ,service_history.startdate ,service_history.enddate ]])
    # table table_content , width: bounds.width

    #   booking.kilometer ,"200" , booking.due_amt , booking.service_amt]]) 
    # table table_content , width: bounds.width 
    # "Kilometers Run", "Initial Payment" , "Due amount" ,"Maintenance "
    bounding_box([0, 620], width: 350) do
      pad(0) { 
        move_down 100
        text_box "<b><font size='22'>"+"<i>Service History Id </i> : </b>#{service_history.id}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Customer Id </i> : </b>#{service_history.customer_id}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Product Id </i> : </b>#{service_history.product_id}</font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Service Start date </i> : </b>#{service_history.startdate}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 100
        text_box "<b><font size='22'>"+"<i>Service Enddate </i> : </b>#{service_history.enddate}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Amount Paid </i> : </b>#{service_history.amount_paid}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Total </i> : </b>#{service_history.total}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Vehicle Type </i> : </b>#{service_history.customer.vehicle_type}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        text_box "<b><font size='22'>"+"<i>Vehicle Number </i> : </b>#{service_history.customer.vehicle_number}</b></font>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        move_down 20
        
        # stroke_bounds
      }
    end
  end

  def order(orderables)
    table_content = ([ ["ID", "Name", "Start Date", "End Date "],
      [@orderables.ids]])
    
    
  end

end

# text_box "<b><font size='22'>" + "Car Renting details</font></b>", :inline_format => true  ,:at =>[Initial_x,cursor]
# move_down 60
# table_content = ([ ["ID", "Name", "Color", "Model","Kilometers Run", "Initial Payment" , "Due amount" ,"Maintenance "],
# [booking.id, booking.car.name, booking.car.color ,booking.car.model , booking.kilometer ,"200" , booking.due_amt , booking.service_amt]]) 
# table table_content , width: bounds.width