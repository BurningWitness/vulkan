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
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorBufferPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorBufferPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDescriptorBufferPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"combinedImageSamplerDescriptorSingleArray" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferlessPushDescriptors" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"allowSamplerImageViewPostSubmitCreation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBufferOffsetAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorBufferBindings" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxResourceDescriptorBufferBindings" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSamplerDescriptorBufferBindings" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxEmbeddedImmutableSamplerBindings" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxEmbeddedImmutableSamplers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferCaptureReplayDescriptorDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageCaptureReplayDescriptorDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageViewCaptureReplayDescriptorDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerCaptureReplayDescriptorDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructureCaptureReplayDescriptorDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"combinedImageSamplerDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampledImageDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageImageDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformTexelBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustUniformTexelBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageTexelBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustStorageTexelBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustUniformBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"robustStorageBufferDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputAttachmentDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructureDescriptorSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSamplerDescriptorBufferRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxResourceDescriptorBufferRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerDescriptorBufferAddressSpaceSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"resourceDescriptorBufferAddressSpaceSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorBufferAddressSpaceSize" ptr)

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
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, pNext}

instance Offset "combinedImageSamplerDescriptorSingleArray" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, combinedImageSamplerDescriptorSingleArray}

instance Offset "bufferlessPushDescriptors" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, bufferlessPushDescriptors}

instance Offset "allowSamplerImageViewPostSubmitCreation" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, allowSamplerImageViewPostSubmitCreation}

instance Offset "descriptorBufferOffsetAlignment" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, descriptorBufferOffsetAlignment}

instance Offset "maxDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxDescriptorBufferBindings}

instance Offset "maxResourceDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxResourceDescriptorBufferBindings}

instance Offset "maxSamplerDescriptorBufferBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxSamplerDescriptorBufferBindings}

instance Offset "maxEmbeddedImmutableSamplerBindings" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxEmbeddedImmutableSamplerBindings}

instance Offset "maxEmbeddedImmutableSamplers" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxEmbeddedImmutableSamplers}

instance Offset "bufferCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, bufferCaptureReplayDescriptorDataSize}

instance Offset "imageCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, imageCaptureReplayDescriptorDataSize}

instance Offset "imageViewCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, imageViewCaptureReplayDescriptorDataSize}

instance Offset "samplerCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerCaptureReplayDescriptorDataSize}

instance Offset "accelerationStructureCaptureReplayDescriptorDataSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, accelerationStructureCaptureReplayDescriptorDataSize}

instance Offset "samplerDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerDescriptorSize}

instance Offset "combinedImageSamplerDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, combinedImageSamplerDescriptorSize}

instance Offset "sampledImageDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, sampledImageDescriptorSize}

instance Offset "storageImageDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageImageDescriptorSize}

instance Offset "uniformTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, uniformTexelBufferDescriptorSize}

instance Offset "robustUniformTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustUniformTexelBufferDescriptorSize}

instance Offset "storageTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageTexelBufferDescriptorSize}

instance Offset "robustStorageTexelBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustStorageTexelBufferDescriptorSize}

instance Offset "uniformBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, uniformBufferDescriptorSize}

instance Offset "robustUniformBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustUniformBufferDescriptorSize}

instance Offset "storageBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, storageBufferDescriptorSize}

instance Offset "robustStorageBufferDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, robustStorageBufferDescriptorSize}

instance Offset "inputAttachmentDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, inputAttachmentDescriptorSize}

instance Offset "accelerationStructureDescriptorSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, accelerationStructureDescriptorSize}

instance Offset "maxSamplerDescriptorBufferRange" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxSamplerDescriptorBufferRange}

instance Offset "maxResourceDescriptorBufferRange" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, maxResourceDescriptorBufferRange}

instance Offset "samplerDescriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, samplerDescriptorBufferAddressSpaceSize}

instance Offset "resourceDescriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, resourceDescriptorBufferAddressSpaceSize}

instance Offset "descriptorBufferAddressSpaceSize" VkPhysicalDeviceDescriptorBufferPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDescriptorBufferPropertiesEXT, descriptorBufferAddressSpaceSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorBufferPropertiesEXT where

#endif