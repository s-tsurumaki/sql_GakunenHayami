DROP VIEW [dbo].[V_NOW_学年]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
====================================================================================================
概要    ： 学年早見表
詳細    ： 現時点の日付から学年早見表を算出します。
====================================================================================================
*/
CREATE VIEW [dbo].[V_NOW_学年] AS

SELECT
    A.年度_生年月日
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 15)) + '/04/02' , 120) AS '中学生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 12)) + '/04/01' , 120) AS '中学生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 12)) + '/04/02' , 120) AS '小学生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  6)) + '/04/01' , 120) AS '小学生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 15)) + '/04/02' , 120) AS '中学3年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 14)) + '/04/01' , 120) AS '中学3年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 14)) + '/04/02' , 120) AS '中学2年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 13)) + '/04/01' , 120) AS '中学2年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 13)) + '/04/02' , 120) AS '中学1年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 12)) + '/04/01' , 120) AS '中学1年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 12)) + '/04/02' , 120) AS '小学6年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 11)) + '/04/01' , 120) AS '小学6年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 11)) + '/04/02' , 120) AS '小学5年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 10)) + '/04/01' , 120) AS '小学5年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 - 10)) + '/04/02' , 120) AS '小学4年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  9)) + '/04/01' , 120) AS '小学4年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  9)) + '/04/02' , 120) AS '小学3年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  8)) + '/04/01' , 120) AS '小学3年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  8)) + '/04/02' , 120) AS '小学2年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  7)) + '/04/01' , 120) AS '小学2年生終了'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  7)) + '/04/02' , 120) AS '小学1年生開始'
  , CONVERT(Date, CONVERT(VARCHAR,(A.年度_生年月日 -  6)) + '/04/01' , 120) AS '小学1年生終了'
FROM
(
  -- システム日付から生年月日年度を取得します。
  SELECT dbo.F_年度(DATEADD(dd, -1, GETDATE())) AS '年度_生年月日'
) A



GO
