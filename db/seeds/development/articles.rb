body =
  "Morning Gloryが4対2でSunflowerに勝利。\n\n" +
  "2回表、6番渡辺の二塁打から7番山田、8番高橋の連続タイムリーで2点先制。" +
  "9回表、ランナー一二塁で2番田中の二塁打で2点を挙げ、ダメを押しました。\n\n" +
  "投げては初先発の山本が7回を2失点に抑え、伊藤、中村とつないで逃げ切りました。"

0.upto(3) do |index|
  Article.create(
    title: "練習試合の結果#{index}",
    body: body,
    released_at: 8.days.ago.advance(days: index),
    expired_at: 2.days.ago.advance(days: index),
    member_only: (index % 3 == 0)
  );
end