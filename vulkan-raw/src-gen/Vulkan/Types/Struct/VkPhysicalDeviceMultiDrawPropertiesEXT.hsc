{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiDrawPropertiesEXT" #-} VkPhysicalDeviceMultiDrawPropertiesEXT =
       VkPhysicalDeviceMultiDrawPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxMultiDrawCount :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceMultiDrawPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMultiDrawPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMultiDrawPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceMultiDrawPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMultiDrawCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxMultiDrawCount" ptr val

instance Offset "sType" VkPhysicalDeviceMultiDrawPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMultiDrawPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawPropertiesEXT, pNext}

instance Offset "maxMultiDrawCount" VkPhysicalDeviceMultiDrawPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawPropertiesEXT, maxMultiDrawCount}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawPropertiesEXT where

#endif