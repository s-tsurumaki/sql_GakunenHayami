DROP VIEW [dbo].[V_NOW_学年早見表]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
====================================================================================================
概要    ： 学年早見表
詳細    ： 現時点の日付から学年早見表を作成します
====================================================================================================
*/
CREATE VIEW [dbo].[V_NOW_学年早見表] AS
SELECT
    B.*
FROM
(
            SELECT 1 AS SortNo , 9 AS '学年Index' , 3 AS '学年' , 15 AS '年齢' , A.年度_生年月日 AS '年度' , '中学校3年生' AS '学年範囲' ,A.中学3年生開始 AS '開始' , A.中学3年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 2 AS SortNo , 8 AS '学年Index' , 2 AS '学年' , 14 AS '年齢' , A.年度_生年月日 AS '年度' , '中学校2年生' AS '学年範囲' ,A.中学2年生開始 AS '開始' , A.中学2年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 3 AS SortNo , 7 AS '学年Index' , 1 AS '学年' , 13 AS '年齢' , A.年度_生年月日 AS '年度' , '中学校1年生' AS '学年範囲' ,A.中学1年生開始 AS '開始' , A.中学1年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 4 AS SortNo , 6 AS '学年Index' , 6 AS '学年' , 12 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校6年生' AS '学年範囲' ,A.小学6年生開始 AS '開始' , A.小学6年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 5 AS SortNo , 5 AS '学年Index' , 5 AS '学年' , 11 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校5年生' AS '学年範囲' ,A.小学5年生開始 AS '開始' , A.小学5年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 6 AS SortNo , 4 AS '学年Index' , 4 AS '学年' , 10 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校4年生' AS '学年範囲' ,A.小学4年生開始 AS '開始' , A.小学4年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 7 AS SortNo , 3 AS '学年Index' , 3 AS '学年' ,  9 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校3年生' AS '学年範囲' ,A.小学3年生開始 AS '開始' , A.小学3年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 8 AS SortNo , 2 AS '学年Index' , 2 AS '学年' ,  8 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校2年生' AS '学年範囲' ,A.小学2年生開始 AS '開始' , A.小学2年生終了 AS '終了' FROM V_NOW_学年 A
  UNION ALL SELECT 9 AS SortNo , 1 AS '学年Index' , 1 AS '学年' ,  7 AS '年齢' , A.年度_生年月日 AS '年度' , '小学校1年生' AS '学年範囲' ,A.小学1年生開始 AS '開始' , A.小学1年生終了 AS '終了' FROM V_NOW_学年 A

) B




GO
