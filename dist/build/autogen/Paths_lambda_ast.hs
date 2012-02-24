module Paths_lambda_ast (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,12], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/hi5networks/.cabal/bin"
libdir     = "/Users/hi5networks/.cabal/lib/lambda-ast-0.0.12/ghc-7.2.2"
datadir    = "/Users/hi5networks/.cabal/share/lambda-ast-0.0.12"
libexecdir = "/Users/hi5networks/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "lambda_ast_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "lambda_ast_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "lambda_ast_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "lambda_ast_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
