class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'タスクの種類を選択してください' },
    { id: 2, name: '校務分掌' },
    { id: 3, name: '学年' },
    { id: 4, name: '教科' },
    { id: 5, name: '部活動' },
    { id: 6, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :tasks
 
end