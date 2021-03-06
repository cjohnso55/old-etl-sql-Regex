drop function [amer\zwander].[RegexTest]
drop function [amer\zwander].[RegexReplace]
drop function [amer\zwander].[RegexMatch]
drop function [amer\zwander].[RegexMatchGroup]
drop function [amer\zwander].[RegexMatchIndex]
drop function [amer\zwander].[RegexMatchToTable]
go


/****** Object:  UserDefinedFunction [dbo].[RegexTest]    Script Date: 11/06/2008 17:44:23 ******/
CREATE FUNCTION [dbo].[RegexTest](@expression [nvarchar](4000), @pattern [nvarchar](4000))
RETURNS [bit] WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexTest]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexTest'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexTest'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexTest'
GO
/****** Object:  UserDefinedFunction [dbo].[RegexReplace]    Script Date: 11/06/2008 17:44:22 ******/
CREATE FUNCTION [dbo].[RegexReplace](@expression [nvarchar](4000), @pattern [nvarchar](4000), @replacement [nvarchar](4000))
RETURNS [nvarchar](4000) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexReplace]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexReplace'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexReplace'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=22 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexReplace'
GO
/****** Object:  UserDefinedFunction [dbo].[RegexMatch]    Script Date: 11/06/2008 17:44:16 ******/
CREATE FUNCTION [dbo].[RegexMatch](@expression [nvarchar](4000), @pattern [nvarchar](4000), @MatchNumber [smallint])
RETURNS [nvarchar](4000) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexMatch]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatch'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatch'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=33 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatch'
GO
/****** Object:  UserDefinedFunction [dbo].[RegexMatchGroup]    Script Date: 11/06/2008 17:44:17 ******/
CREATE FUNCTION [dbo].[RegexMatchGroup](@expression [nvarchar](4000), @pattern [nvarchar](4000), @MatchNumber [smallint], @GroupNumber [smallint])
RETURNS [nvarchar](4000) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexMatchGroup]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=48 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchGroup'
GO
/****** Object:  UserDefinedFunction [dbo].[RegexMatchIndex]    Script Date: 11/06/2008 17:44:18 ******/
CREATE FUNCTION [dbo].[RegexMatchIndex](@expression [nvarchar](4000), @pattern [nvarchar](4000), @MatchNumber [smallint])
RETURNS [int] WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexMatchIndex]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=67 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchIndex'
GO
/****** Object:  UserDefinedFunction [dbo].[RegexMatchToTable]    Script Date: 11/06/2008 17:44:21 ******/
CREATE FUNCTION [dbo].[RegexMatchToTable](@input [nvarchar](max), @pattern [nvarchar](4000))
RETURNS  TABLE (
	[Index] [smallint] NULL,
	[StartingPosition] [int] NULL,
	[Length] [int] NULL,
	[Text] [nvarchar](max) NULL
) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [Regex].[UserDefinedFunctions].[RegexMatchToTable]
GO
EXEC sys.sp_addextendedproperty @name=N'AutoDeployed', @value=N'yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchToTable'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFile', @value=N'RegexTest.cs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchToTable'
GO
EXEC sys.sp_addextendedproperty @name=N'SqlAssemblyFileLine', @value=82 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'RegexMatchToTable'
GO
