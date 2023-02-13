{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkApplicationInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkApplicationInfo" #-} VkApplicationInfo =
       VkApplicationInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pApplicationName :: Ptr #{type char}
         , applicationVersion :: #{type uint32_t}
         , pEngineName :: Ptr #{type char}
         , engineVersion :: #{type uint32_t}
         , apiVersion :: #{type uint32_t}
         }

instance Storable VkApplicationInfo where
  sizeOf    _ = #{size      VkApplicationInfo}
  alignment _ = #{alignment VkApplicationInfo}

  peek ptr = 
    VkApplicationInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pApplicationName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"applicationVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pEngineName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"engineVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"apiVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pApplicationName" ptr val
    pokeField @"applicationVersion" ptr val
    pokeField @"pEngineName" ptr val
    pokeField @"engineVersion" ptr val
    pokeField @"apiVersion" ptr val

instance Offset "sType" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, sType}

instance Offset "pNext" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, pNext}

instance Offset "pApplicationName" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, pApplicationName}

instance Offset "applicationVersion" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, applicationVersion}

instance Offset "pEngineName" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, pEngineName}

instance Offset "engineVersion" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, engineVersion}

instance Offset "apiVersion" VkApplicationInfo where
  rawOffset = #{offset VkApplicationInfo, apiVersion}