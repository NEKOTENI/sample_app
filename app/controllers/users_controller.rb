class UsersController < ApplicationController
  # GET /user/1
  def show
    # user = User.first # ローカル変数。このメソッド内でしか使えない。
    #@user = User.first # インスタンス変数。これを使うとテンプレート（View）から呼び出せる。
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
def create
    @user = User.new(user_params)    # 実装は終わっていないことに注意!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private #これ以下はこのコントローラー内でしかアクセスできないメソッド一覧

    def user_params
      # このパラメータしか登録を許さないよ
      params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
    end
end
