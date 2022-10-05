class TodosController < ApplicationController
  # before_action :set_todo, only: %i[ show update create destroy ]
  # skip_before_action :verify_authenticity_token
  skip_before_action :set_current_user, :authenticate_request
  #  GET /todos
  def index
    @todos = Todo.all

    render json: @todos
  end

  # GET /todos/1
  def show
    render json: @todo
  end

  # POST /todos
  def create
    @new_todo = Todo.create(todo_text:params["todo"]["todo_text"],due_date:params["todo"]["due_date"],status:false);
    # @todo = Todo.all
    # render json: @todo
  end

  # PATCH/PUT /todos/1
  # def update
  #   if @todo.update(todo_params)
  #     render json: @todo
  #   else
  #     render json: @todo.errors, status: :unprocessable_entity
  #   end
  # end
  def update
    @todo = Todo.find(params[:id])
    if(@todo.status)
      @todo.status = false;
    else
      @todo.status = true;
    end
  end

  # DELETE /todos/1
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    # ActiveRecord::Base.connection.execute("ALTER SEQUENCE todos_id_seq RESTART WITH #{params[:id]}")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.fetch(:todo, {})
    end
end
