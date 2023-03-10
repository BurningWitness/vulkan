{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_cooperative_matrix

module Vulkan.Types.Struct.VkCooperativeMatrixPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkComponentTypeNV
import Vulkan.Types.Enum.VkScopeNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCooperativeMatrixPropertiesNV" #-} VkCooperativeMatrixPropertiesNV =
       VkCooperativeMatrixPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mSize :: #{type uint32_t}
         , nSize :: #{type uint32_t}
         , kSize :: #{type uint32_t}
         , aType :: VkComponentTypeNV
         , bType :: VkComponentTypeNV
         , cType :: VkComponentTypeNV
         , dType :: VkComponentTypeNV
         , scope :: VkScopeNV
         }

instance Storable VkCooperativeMatrixPropertiesNV where
  sizeOf    _ = #{size      VkCooperativeMatrixPropertiesNV}
  alignment _ = #{alignment VkCooperativeMatrixPropertiesNV}

  peek ptr = 
    VkCooperativeMatrixPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"MSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"NSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"KSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"AType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"BType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"CType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"DType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scope" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"MSize" ptr val
    pokeField @"NSize" ptr val
    pokeField @"KSize" ptr val
    pokeField @"AType" ptr val
    pokeField @"BType" ptr val
    pokeField @"CType" ptr val
    pokeField @"DType" ptr val
    pokeField @"scope" ptr val

instance Offset "sType" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, sType}

instance Offset "pNext" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, pNext}

instance Offset "mSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, MSize}

instance Offset "nSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, NSize}

instance Offset "kSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, KSize}

instance Offset "aType" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, AType}

instance Offset "bType" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, BType}

instance Offset "cType" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, CType}

instance Offset "dType" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, DType}

instance Offset "scope" VkCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkCooperativeMatrixPropertiesNV, scope}

instance Offset "MSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"mSize" @VkCooperativeMatrixPropertiesNV

instance Offset "NSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"nSize" @VkCooperativeMatrixPropertiesNV

instance Offset "KSize" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"kSize" @VkCooperativeMatrixPropertiesNV

instance Offset "AType" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"aType" @VkCooperativeMatrixPropertiesNV

instance Offset "BType" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"bType" @VkCooperativeMatrixPropertiesNV

instance Offset "CType" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"cType" @VkCooperativeMatrixPropertiesNV

instance Offset "DType" VkCooperativeMatrixPropertiesNV where
  rawOffset = rawOffset @"dType" @VkCooperativeMatrixPropertiesNV

instance HasField "MSize" VkCooperativeMatrixPropertiesNV #{type uint32_t} where
  getField = getField @"mSize" @VkCooperativeMatrixPropertiesNV

instance HasField "NSize" VkCooperativeMatrixPropertiesNV #{type uint32_t} where
  getField = getField @"nSize" @VkCooperativeMatrixPropertiesNV

instance HasField "KSize" VkCooperativeMatrixPropertiesNV #{type uint32_t} where
  getField = getField @"kSize" @VkCooperativeMatrixPropertiesNV

instance HasField "AType" VkCooperativeMatrixPropertiesNV VkComponentTypeNV where
  getField = getField @"aType" @VkCooperativeMatrixPropertiesNV

instance HasField "BType" VkCooperativeMatrixPropertiesNV VkComponentTypeNV where
  getField = getField @"bType" @VkCooperativeMatrixPropertiesNV

instance HasField "CType" VkCooperativeMatrixPropertiesNV VkComponentTypeNV where
  getField = getField @"cType" @VkCooperativeMatrixPropertiesNV

instance HasField "DType" VkCooperativeMatrixPropertiesNV VkComponentTypeNV where
  getField = getField @"dType" @VkCooperativeMatrixPropertiesNV

#else

module Vulkan.Types.Struct.VkCooperativeMatrixPropertiesNV where

#endif