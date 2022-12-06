class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    #検索モデル→params[:range]
    @range = params[:range]

    if @range == "User"
      #検索方法→params[:search]
      @users = User.looks(params[:search], params[:word])
    else
      #検索ワード→params[:word]
      @books = Book.looks(params[:search], params[:word])
    end
  end
end

# ②if文を使い、検索モデルUserorBookで条件分岐させます。

# ③looksメソッドを使い、検索内容を取得し、変数に代入します。
# 検索方法params searchと、検索ワードparams[:word]を参照してデータを検索し、
# 1：インスタンス変数@usersにUserモデル内での検索結果を代入します。
# 2：インスタンス変数@booksにBookモデル内での検索結果を代入します。

# これでsearchアクションは完成です。

