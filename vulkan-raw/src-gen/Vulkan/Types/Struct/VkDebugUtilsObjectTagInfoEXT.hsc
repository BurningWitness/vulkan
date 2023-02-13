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
  sizeOf    _ = #{size      VkDebugUtilsObjectTagInfoEXT}
  alignment _ = #{alignment VkDebugUtilsObjectTagInfoEXT}

  peek ptr = 
    VkDebugUtilsObjectTagInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tagName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tagSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTag" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"objectType" ptr val
    pokeField @"objectHandle" ptr val
    pokeField @"tagName" ptr val
    pokeField @"tagSize" ptr val
    pokeField @"pTag" ptr val

instance Offset "sType" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, sType}

instance Offset "pNext" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, pNext}

instance Offset "objectType" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, objectType}

instance Offset "objectHandle" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, objectHandle}

instance Offset "tagName" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, tagName}

instance Offset "tagSize" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, tagSize}

instance Offset "pTag" VkDebugUtilsObjectTagInfoEXT where
  rawOffset = #{offset VkDebugUtilsObjectTagInfoEXT, pTag}

#else

module Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT where

#endif