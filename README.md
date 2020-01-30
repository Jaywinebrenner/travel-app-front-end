# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<div class="intro">
<h1>Find your next vacation!</h1>
</div>
<div class="destination-list">
  <% @destinations.each do |destination| %>
  <div class="destination-country">
    <h2><%=destination.fetch("country")%></h2>
  </div>
  <% end %>
</div>


<%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
 <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>


  <li><%= link_to product.name, product_path(product)%></li>


    <h2><%= link_to destination.fetch("country"), destination_path(destination) %></h2>
