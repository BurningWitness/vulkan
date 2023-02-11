{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorBufferPropertiesEXT" #-} VkPhysicalDeviceDescriptorBufferPropertiesEXT =
       VkPhysicalDeviceDescriptorBufferPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , combinedImageSamplerDescriptorSingleArray :: VkBool32
         , bufferlessPushDescriptors :: VkBool32
         , allowSamplerImageViewPostSubmitCreation :: VkBool32
         , descriptorBufferOffsetAlignment :: VkDeviceSize
         , maxDescriptorBufferBindings :: #{type uint32_t}
         , maxResourceDescriptorBufferBindings :: #{type uint32_t}
         , maxSamplerDescriptorBufferBindings :: #{type uint32_t}
         , maxEmbeddedImmutableSamplerBindings :: #{type uint32_t}
         , maxEmbeddedImmutableSamplers :: #{type uint32_t}
         , bufferCaptureReplayDescriptorDataSize :: #{type size_t}
         , imageCaptureReplayDescriptorDataSize :: #{type size_t}
         , imageViewCaptureReplayDescriptorDataSize :: #{type size_t}
         , samplerCaptureReplayDescriptorDataSize :: #{type size_t}
         , accelerationStructureCaptureReplayDescriptorDataSize :: #{type size_t}
         , samplerDescriptorSize :: #{type size_t}
         , combinedImageSamplerDescriptorSize :: #{type size_t}
         , sampledImageDescriptorSize :: #{type size_t}
         , storageImageDescriptorSize :: #{type size_t}
         , uniformTexelBufferDescriptorSize :: #{type size_t}
         , robustUniformTexelBufferDescriptorSize :: #{type size_t}
         , storageTexelBufferDescriptorSize :: #{type size_t}
         , robustStorageTexelBufferDescriptorSize :: #{type size_t}
         , uniformBufferDescriptorSize :: #{type size_t}
         , robustUniformBufferDescriptorSize :: #{type size_t}
         , storageBufferDescriptorSize :: #{type size_t}
         , robustStorageBufferDescriptorSize :: #{type size_t}
         , inputAttachmentDescriptorSize :: #{type size_t}
         , accelerationStructureDescriptorSize :: #{type size_t}
         , maxSamplerDescriptorBufferRange :: VkDeviceSize
         , maxResourceDescriptorBufferRange :: VkDeviceSize
         , samplerDescriptorBufferAddressSpaceSize :: VkDeviceSize
         , resourceDescriptorBufferAddressSpaceSize :: VkDeviceSize
         , descriptorBufferAddressSpaceSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDescriptorBufferPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceDescriptorBufferPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorBufferPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"combinedImageSamplerDescriptorSingleArray" ptr)
       <*> peek (offset @"bufferlessPushDescriptors" ptr)
       <*> peek (offset @"allowSamplerImageViewPostSubmitCreation" ptr)
       <*> peek (offset @"descriptorBufferOffsetAlignment" ptr)
       <*> peek (offset @"maxDescriptorBufferBindings" ptr)
       <*> peek (offset @"maxResourceDescriptorBufferBindings" ptr)
       <*> peek (offset @"maxSamplerDescriptorBufferBindings" ptr)
       <*> peek (offset @"maxEmbeddedImmutableSamplerBindings" ptr)
       <*> peek (offset @"maxEmbeddedImmutableSamplers" ptr)
       <*> peek (offset @"bufferCaptureReplayDescriptorDataSize" ptr)
       <*> peek (offset @"imageCaptureReplayDescriptorDataSize" ptr)
       <*> peek (offset @"imageViewCaptureReplayDescriptorDataSize" ptr)
       <*> peek (offset @"samplerCaptureReplayDescriptorDataSize" ptr)
       <*> peek (offset @"accelerationStructureCaptureReplayDescriptorDataSize" ptr)
       <*> peek (offset @"samplerDescriptorSize" ptr)
       <*> peek (offset @"combinedImageSamplerDescriptorSize" ptr)
       <*> peek (offset @"sampledImageDescriptorSize" ptr)
       <*> peek (offset @"storageImageDescriptorSize" ptr)
       <*> peek (offset @"uniformTexelBufferDescriptorSize" ptr)
       <*> peek (offset @"robustUniformTexelBufferDescriptorSize" ptr)
       <*> peek (offset @"storageTexelBufferDescriptorSize" ptr)
       <*> peek (offset @"robustStorageTexelBufferDescriptorSize" ptr)
       <*> peek (offset @"uniformBufferDescriptorSize" ptr)
       <*> peek (offset @"robustUniformBufferDescriptorSize" ptr)
       <*> peek (offset @"storageBufferDescriptorSize" ptr)
       <*> peek (offset @"robustStorageBufferDescriptorSize" ptr)
       <*> peek (offset @"inputAttachmentDescriptorSize" ptr)
       <*> peek (offset @"accelerationStructureDescriptorSize" ptr)
       <*> peek (offset @"maxSamplerDescriptorBufferRange" ptr)
       <*> peek (offset @"maxResourceDescriptorBufferRange" ptr)
       <*> peek (offset @"samplerDescriptorBufferAddressSpaceSize" ptr)
       <*> peek (offset @"resourceDescriptorBufferAddressSpaceSize" ptr)
       <*> peek (offset @"descriptorBufferAddressSpaceSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"combinedImageSamplerDescriptorSingleArray" ptr val
    pokeField @"bufferlessPushDescriptors" ptr val
    pokeField @"allowSamplerImageViewPostSubmitCreation" ptr val
    pokeField @"descriptorBufferOffsetAlignment" ptr val
    pokeField @"maxDescriptorBufferBindings" ptr val
    pokeField @"maxResourceDescriptorBufferBindings" ptr val
    pokeField @"maxSamplerDescriptorBufferBindings" ptr val
    pokeField @"maxEmbeddedImmutableSamplerBindings" ptr val
    pokeField @"maxEmbeddedImmutableSamplers" ptr val
    pokeField @"bufferCaptureReplayDescriptorDataSize" ptr val
    pokeField @"imageCaptureReplayDescriptorDataSize" ptr val
    pokeField @"imageViewCaptureReplayDescriptorDataSize" ptr val
    pokeField @"samplerCaptureReplayDescriptorDataSize" ptr val
    pokeField @"accelerationStructureCaptureReplayDescriptorDataSize" ptr val
    pokeField @"samplerDescriptorSize" ptr val
    pokeField @"combinedImageSamplerDescriptorSize" ptr val
    pokeField @"sampledImageDescriptorSize" ptr val
    pokeField @"storageImageDescriptorSize" ptr val
    pokeField @"uniformTexelBufferDescriptorSize" ptr val
    pokeField @"robustUniformTexelBufferDescriptorSize" ptr val
    pokeField @"storageTexelBufferDescriptorSize" ptr val
    pokeField @"robustStorageTexelBufferDescriptorSize" ptr val
    pokeField @"uniformBufferDescriptorSize" ptr val
    pokeField @"robustUniformBufferDescriptorSize" ptr val
    pokeField @"storageBufferDescriptorSize" ptr val
    pokeField @"robustStorageBufferDescriptorSize" ptr val
    pokeField @"inputAttachmentDescriptorSize" ptr val
    pokeField @"accelerationStructureDescriptorSize" ptr val
    pokeField @"maxSamplerDescriptorBufferRange" ptr val
    pokeField @"maxResourceDescriptorBufferRange" ptr val
    pokeField @"samplerDescriptorBufferAddressSpaceSize" ptr val
    pokeField @"resourceDescriptorBufferAddressSpaceSize" ptr val
    pokeField @"descriptorBufferAddressSpaceSize" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, pNext}

instance Offset "combinedImageSamplerDescriptorSingleArray" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, combinedImageSamplerDescriptorSingleArray}

instance Offset "bufferlessPushDescriptors" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, bufferlessPushDescriptors}

instance Offset "allowSamplerImageViewPostSubmitCreation" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, allowSamplerImageViewPostSubmitCreation}

instance Offset "descriptorBufferOffsetAlignment" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, descriptorBufferOffsetAlignment}

instance Offset "maxDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxDescriptorBufferBindings}

instance Offset "maxResourceDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxResourceDescriptorBufferBindings}

instance Offset "maxSamplerDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxSamplerDescriptorBufferBindings}

instance Offset "maxEmbeddedImmutableSamplerBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxEmbeddedImmutableSamplerBindings}

instance Offset "maxEmbeddedImmutableSamplers" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxEmbeddedImmutableSamplers}

instance Offset "bufferCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, bufferCaptureReplayDescriptorDataSize}

instance Offset "imageCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, imageCaptureReplayDescriptorDataSize}

instance Offset "imageViewCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, imageViewCaptureReplayDescriptorDataSize}

instance Offset "samplerCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerCaptureReplayDescriptorDataSize}

instance Offset "accelerationStructureCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, accelerationStructureCaptureReplayDescriptorDataSize}

instance Offset "samplerDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerDescriptorSize}

instance Offset "combinedImageSamplerDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, combinedImageSamplerDescriptorSize}

instance Offset "sampledImageDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, sampledImageDescriptorSize}

instance Offset "storageImageDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageImageDescriptorSize}

instance Offset "uniformTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, uniformTexelBufferDescriptorSize}

instance Offset "robustUniformTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustUniformTexelBufferDescriptorSize}

instance Offset "storageTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageTexelBufferDescriptorSize}

instance Offset "robustStorageTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustStorageTexelBufferDescriptorSize}

instance Offset "uniformBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, uniformBufferDescriptorSize}

instance Offset "robustUniformBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustUniformBufferDescriptorSize}

instance Offset "storageBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageBufferDescriptorSize}

instance Offset "robustStorageBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustStorageBufferDescriptorSize}

instance Offset "inputAttachmentDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, inputAttachmentDescriptorSize}

instance Offset "accelerationStructureDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, accelerationStructureDescriptorSize}

instance Offset "maxSamplerDescriptorBufferRange" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxSamplerDescriptorBufferRange}

instance Offset "maxResourceDescriptorBufferRange" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxResourceDescriptorBufferRange}

instance Offset "samplerDescriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerDescriptorBufferAddressSpaceSize}

instance Offset "resourceDescriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, resourceDescriptorBufferAddressSpaceSize}

instance Offset "descriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDescriptorBufferPropertiesEXT, descriptorBufferAddressSpaceSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferPropertiesEXT where

#endif