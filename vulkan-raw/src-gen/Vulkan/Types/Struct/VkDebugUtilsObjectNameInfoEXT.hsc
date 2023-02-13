{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugUtilsObjectNameInfoEXT" #-} VkDebugUtilsObjectNameInfoEXT =
       VkDebugUtilsObjectNameInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , objectType :: VkObjectType
         , objectHandle :: #{type uint64_t}
         , pObjectName :: Ptr #{type char}
         }

instance Storable VkDebugUtilsObjectNameInfoEXT where
  sizeOf    _ = #{size      VkDebugUtilsObjectNameInfoEXT}
  alignment _ = #{alignment VkDebugUtilsObjectNameInfoEXT}

  peek ptr = 
    VkDebugUtilsObjectNameInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pObjectName" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"objectType" ptr val
    pokeField @"objectHandle" ptr val
    pokeField @"pObjectName" ptr val

instance Offset "sType" VkDebugUtilsObjectNameInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectNameInfoEXT, sType}

instance Offset "pNext" VkDebugUtilsObjectNameInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectNameInfoEXT, pNext}

instance Offset "objectType" VkDebugUtilsObjectNameInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectNameInfoEXT, objectType}

instance Offset "objectHandle" VkDebugUtilsObjectNameInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectNameInfoEXT, objectHandle}

instance Offset "pObjectName" VkDebugUtilsObjectNameInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectNameInfoEXT, pObjectName}

#else

module Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT where

#endif