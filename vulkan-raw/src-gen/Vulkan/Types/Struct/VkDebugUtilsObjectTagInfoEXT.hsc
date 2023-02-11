{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugUtilsObjectTagInfoEXT" #-} VkDebugUtilsObjectTagInfoEXT =
       VkDebugUtilsObjectTagInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , objectType :: VkObjectType
         , objectHandle :: #{type uint64_t}
         , tagName :: #{type uint64_t}
         , tagSize :: #{type size_t}
         , pTag :: Ptr ()
         }

instance Storable VkDebugUtilsObjectTagInfoEXT where
  sizeOf    _ = #{size      struct VkDebugUtilsObjectTagInfoEXT}
  alignment _ = #{alignment struct VkDebugUtilsObjectTagInfoEXT}

  peek ptr = 
    VkDebugUtilsObjectTagInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"objectType" ptr)
       <*> peek (offset @"objectHandle" ptr)
       <*> peek (offset @"tagName" ptr)
       <*> peek (offset @"tagSize" ptr)
       <*> peek (offset @"pTag" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"objectType" ptr val
    pokeField @"objectHandle" ptr val
    pokeField @"tagName" ptr val
    pokeField @"tagSize" ptr val
    pokeField @"pTag" ptr val

instance Offset "sType" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, sType}

instance Offset "pNext" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, pNext}

instance Offset "objectType" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, objectType}

instance Offset "objectHandle" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, objectHandle}

instance Offset "tagName" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, tagName}

instance Offset "tagSize" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, tagSize}

instance Offset "pTag" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset struct VkDebugUtilsObjectTagInfoEXT, pTag}

#else

module Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT where

#endif