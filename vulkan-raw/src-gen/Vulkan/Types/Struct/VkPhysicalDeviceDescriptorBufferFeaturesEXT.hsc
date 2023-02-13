{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorBufferFeaturesEXT" #-} VkPhysicalDeviceDescriptorBufferFeaturesEXT =
       VkPhysicalDeviceDescriptorBufferFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorBuffer :: VkBool32
         , descriptorBufferCaptureReplay :: VkBool32
         , descriptorBufferImageLayoutIgnored :: VkBool32
         , descriptorBufferPushDescriptors :: VkBool32
         }

instance Storable VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorBufferFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorBufferFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorBufferFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBufferCaptureReplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBufferImageLayoutIgnored" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBufferPushDescriptors" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorBuffer" ptr val
    pokeField @"descriptorBufferCaptureReplay" ptr val
    pokeField @"descriptorBufferImageLayoutIgnored" ptr val
    pokeField @"descriptorBufferPushDescriptors" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, pNext}

instance Offset "descriptorBuffer" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, descriptorBuffer}

instance Offset "descriptorBufferCaptureReplay" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, descriptorBufferCaptureReplay}

instance Offset "descriptorBufferImageLayoutIgnored" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, descriptorBufferImageLayoutIgnored}

instance Offset "descriptorBufferPushDescriptors" VkPhysicalDeviceDescriptorBufferFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferFeaturesEXT, descriptorBufferPushDescriptors}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferFeaturesEXT where

#endif