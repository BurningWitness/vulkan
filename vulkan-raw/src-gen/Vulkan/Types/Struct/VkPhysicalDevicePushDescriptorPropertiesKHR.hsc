{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_push_descriptor

module Vulkan.Types.Struct.VkPhysicalDevicePushDescriptorPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePushDescriptorPropertiesKHR" #-} VkPhysicalDevicePushDescriptorPropertiesKHR =
       VkPhysicalDevicePushDescriptorPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxPushDescriptors :: #{type uint32_t}
         }

instance Storable VkPhysicalDevicePushDescriptorPropertiesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDevicePushDescriptorPropertiesKHR}
  alignment _ = #{alignment struct VkPhysicalDevicePushDescriptorPropertiesKHR}

  peek ptr = 
    VkPhysicalDevicePushDescriptorPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxPushDescriptors" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxPushDescriptors" ptr val

instance Offset "sType" VkPhysicalDevicePushDescriptorPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePushDescriptorPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePushDescriptorPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePushDescriptorPropertiesKHR, pNext}

instance Offset "maxPushDescriptors" VkPhysicalDevicePushDescriptorPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePushDescriptorPropertiesKHR, maxPushDescriptors}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePushDescriptorPropertiesKHR where

#endif