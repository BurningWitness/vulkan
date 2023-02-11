{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_robustness2

module Vulkan.Types.Struct.VkPhysicalDeviceRobustness2PropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRobustness2PropertiesEXT" #-} VkPhysicalDeviceRobustness2PropertiesEXT =
       VkPhysicalDeviceRobustness2PropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , robustStorageBufferAccessSizeAlignment :: VkDeviceSize
         , robustUniformBufferAccessSizeAlignment :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceRobustness2PropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceRobustness2PropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceRobustness2PropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceRobustness2PropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"robustStorageBufferAccessSizeAlignment" ptr)
       <*> peek (offset @"robustUniformBufferAccessSizeAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"robustStorageBufferAccessSizeAlignment" ptr val
    pokeField @"robustUniformBufferAccessSizeAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceRobustness2PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceRobustness2PropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceRobustness2PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceRobustness2PropertiesEXT, pNext}

instance Offset "robustStorageBufferAccessSizeAlignment" VkPhysicalDeviceRobustness2PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceRobustness2PropertiesEXT, robustStorageBufferAccessSizeAlignment}

instance Offset "robustUniformBufferAccessSizeAlignment" VkPhysicalDeviceRobustness2PropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceRobustness2PropertiesEXT, robustUniformBufferAccessSizeAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRobustness2PropertiesEXT where

#endif