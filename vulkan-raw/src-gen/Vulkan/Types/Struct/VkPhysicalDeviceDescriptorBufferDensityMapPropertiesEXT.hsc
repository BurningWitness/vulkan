{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT" #-} VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT =
       VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , combinedImageSamplerDensityMapDescriptorSize :: #{type size_t}
         }

instance Storable VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"combinedImageSamplerDensityMapDescriptorSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"combinedImageSamplerDensityMapDescriptorSize" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT, pNext}

instance Offset "combinedImageSamplerDensityMapDescriptorSize" VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT, combinedImageSamplerDensityMapDescriptorSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT where

#endif