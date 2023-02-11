{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_image_view_handle

module Vulkan.Types.Struct.VkImageViewHandleInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewHandleInfoNVX" #-} VkImageViewHandleInfoNVX =
       VkImageViewHandleInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         , descriptorType :: VkDescriptorType
         , sampler :: VkSampler
         }

instance Storable VkImageViewHandleInfoNVX where
  sizeOf    _ = #{size      struct VkImageViewHandleInfoNVX}
  alignment _ = #{alignment struct VkImageViewHandleInfoNVX}

  peek ptr = 
    VkImageViewHandleInfoNVX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"descriptorType" ptr)
       <*> peek (offset @"sampler" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"sampler" ptr val

instance Offset "sType" VkImageViewHandleInfoNVX where
  rawOffset = #{offset struct VkImageViewHandleInfoNVX, sType}

instance Offset "pNext" VkImageViewHandleInfoNVX where
  rawOffset = #{offset struct VkImageViewHandleInfoNVX, pNext}

instance Offset "imageView" VkImageViewHandleInfoNVX where
  rawOffset = #{offset struct VkImageViewHandleInfoNVX, imageView}

instance Offset "descriptorType" VkImageViewHandleInfoNVX where
  rawOffset = #{offset struct VkImageViewHandleInfoNVX, descriptorType}

instance Offset "sampler" VkImageViewHandleInfoNVX where
  rawOffset = #{offset struct VkImageViewHandleInfoNVX, sampler}

#else

module Vulkan.Types.Struct.VkImageViewHandleInfoNVX where

#endif