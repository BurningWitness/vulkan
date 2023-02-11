{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      union VkDescriptorDataEXT}
  alignment _ = #{alignment union VkDescriptorDataEXT}

  peek ptr = 
    VkDescriptorDataEXT
       <$> peek (offset @"pSampler" ptr)
       <*> peek (offset @"pCombinedImageSampler" ptr)
       <*> peek (offset @"pInputAttachmentImage" ptr)
       <*> peek (offset @"pSampledImage" ptr)
       <*> peek (offset @"pStorageImage" ptr)
       <*> peek (offset @"pUniformTexelBuffer" ptr)
       <*> peek (offset @"pStorageTexelBuffer" ptr)
       <*> peek (offset @"pUniformBuffer" ptr)
       <*> peek (offset @"pStorageBuffer" ptr)
       <*> peek (offset @"accelerationStructure" ptr)

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
  rawOffset = #{offset union VkDescriptorDataEXT, pSampler}

instance Offset "pCombinedImageSampler" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pCombinedImageSampler}

instance Offset "pInputAttachmentImage" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pInputAttachmentImage}

instance Offset "pSampledImage" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pSampledImage}

instance Offset "pStorageImage" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pStorageImage}

instance Offset "pUniformTexelBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pUniformTexelBuffer}

instance Offset "pStorageTexelBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pStorageTexelBuffer}

instance Offset "pUniformBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pUniformBuffer}

instance Offset "pStorageBuffer" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, pStorageBuffer}

instance Offset "accelerationStructure" VkDescriptorDataEXT where
  rawOffset = #{offset union VkDescriptorDataEXT, accelerationStructure}

#else

module Vulkan.Types.Union.VkDescriptorDataEXT where

#endif