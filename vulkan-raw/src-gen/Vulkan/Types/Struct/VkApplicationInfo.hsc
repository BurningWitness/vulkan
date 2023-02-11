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
  sizeOf    _ = #{size      struct VkApplicationInfo}
  alignment _ = #{alignment struct VkApplicationInfo}

  peek ptr = 
    VkApplicationInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pApplicationName" ptr)
       <*> peek (offset @"applicationVersion" ptr)
       <*> peek (offset @"pEngineName" ptr)
       <*> peek (offset @"engineVersion" ptr)
       <*> peek (offset @"apiVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pApplicationName" ptr val
    pokeField @"applicationVersion" ptr val
    pokeField @"pEngineName" ptr val
    pokeField @"engineVersion" ptr val
    pokeField @"apiVersion" ptr val

instance Offset "sType" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, sType}

instance Offset "pNext" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, pNext}

instance Offset "pApplicationName" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, pApplicationName}

instance Offset "applicationVersion" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, applicationVersion}

instance Offset "pEngineName" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, pEngineName}

instance Offset "engineVersion" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, engineVersion}

instance Offset "apiVersion" VkApplicationInfo where
  rawOffset = #{offset struct VkApplicationInfo, apiVersion}