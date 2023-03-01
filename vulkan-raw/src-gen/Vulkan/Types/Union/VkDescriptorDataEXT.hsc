{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Union.VkDescriptorDataEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorAddressInfoEXT
import Vulkan.Types.Struct.VkDescriptorImageInfo



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorDataEXT" #-} VkDescriptorDataEXT =
       VkDescriptorDataEXT
         { pSampler :: Ptr VkSampler
         , pCombinedImageSampler :: Ptr VkDescriptorImageInfo
         , pInputAttachmentImage :: Ptr VkDescriptorImageInfo
         , pSampledImage :: Ptr VkDescriptorImageInfo
         , pStorageImage :: Ptr VkDescriptorImageInfo
         , pUniformTexelBuffer :: Ptr VkDescriptorAddressInfoEXT
         , pStorageTexelBuffer :: Ptr VkDescriptorAddressInfoEXT
         , pUniformBuffer :: Ptr VkDescriptorAddressInfoEXT
         , pStorageBuffer :: Ptr VkDescriptorAddressInfoEXT
         , accelerationStructure :: VkDeviceAddress
         }

instance Storable VkDescriptorDataEXT where
  sizeOf    _ = #{size      VkDescriptorDataEXT}
  alignment _ = #{alignment VkDescriptorDataEXT}

  peek ptr = 
    VkDescriptorDataEXT
       <$> peek (Foreign.Storable.Offset.offset @"pSampler" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCombinedImageSampler" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInputAttachmentImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSampledImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStorageImage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUniformTexelBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStorageTexelBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUniformBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructure" ptr)

  poke ptr val = do
    pokeField @"pSampler" ptr val
    pokeField @"pCombinedImageSampler" ptr val
    pokeField @"pInputAttachmentImage" ptr val
    pokeField @"pSampledImage" ptr val
    pokeField @"pStorageImage" ptr val
    pokeField @"pUniformTexelBuffer" ptr val
    pokeField @"pStorageTexelBuffer" ptr val
    pokeField @"pUniformBuffer" ptr val
    pokeField @"pStorageBuffer" ptr val
    pokeField @"accelerationStructure" ptr val

instance Offset "pSampler" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pSampler}

instance Offset "pCombinedImageSampler" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pCombinedImageSampler}

instance Offset "pInputAttachmentImage" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pInputAttachmentImage}

instance Offset "pSampledImage" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pSampledImage}

instance Offset "pStorageImage" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pStorageImage}

instance Offset "pUniformTexelBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pUniformTexelBuffer}

instance Offset "pStorageTexelBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pStorageTexelBuffer}

instance Offset "pUniformBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pUniformBuffer}

instance Offset "pStorageBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, pStorageBuffer}

instance Offset "accelerationStructure" VkDescriptorDataEXT where
  rawOffset = #{offset VkDescriptorDataEXT, accelerationStructure}

#else

module Vulkan.Types.Union.VkDescriptorDataEXT where

#endif