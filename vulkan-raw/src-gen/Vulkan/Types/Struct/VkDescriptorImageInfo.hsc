{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorImageInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorImageInfo" #-} VkDescriptorImageInfo =
       VkDescriptorImageInfo
         { sampler :: VkSampler -- ^ Sampler to write to the descriptor in case it is a SAMPLER or COMBINED_IMAGE_SAMPLER descriptor. Ignored otherwise.
         , imageView :: VkImageView -- ^ Image view to write to the descriptor in case it is a SAMPLED_IMAGE, STORAGE_IMAGE, COMBINED_IMAGE_SAMPLER, or INPUT_ATTACHMENT descriptor. Ignored otherwise.
         , imageLayout :: VkImageLayout -- ^ Layout the image is expected to be in when accessed using this descriptor (only used if imageView is not VK_NULL_HANDLE).
         }

instance Storable VkDescriptorImageInfo where
  sizeOf    _ = #{size      VkDescriptorImageInfo}
  alignment _ = #{alignment VkDescriptorImageInfo}

  peek ptr = 
    VkDescriptorImageInfo
       <$> peek (offset @"sampler" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"imageLayout" ptr)

  poke ptr val = do
    pokeField @"sampler" ptr val
    pokeField @"imageView" ptr val
    pokeField @"imageLayout" ptr val

instance Offset "sampler" VkDescriptorImageInfo where
  rawOffset = #{offset VkDescriptorImageInfo, sampler}

instance Offset "imageView" VkDescriptorImageInfo where
  rawOffset = #{offset VkDescriptorImageInfo, imageView}

instance Offset "imageLayout" VkDescriptorImageInfo where
  rawOffset = #{offset VkDescriptorImageInfo, imageLayout}