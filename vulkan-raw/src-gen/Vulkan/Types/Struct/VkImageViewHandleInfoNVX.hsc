{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkImageViewHandleInfoNVX}
  alignment _ = #{alignment VkImageViewHandleInfoNVX}

  peek ptr = 
    VkImageViewHandleInfoNVX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageView" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampler" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"sampler" ptr val

instance Offset "sType" VkImageViewHandleInfoNVX where
  rawOffset = #{offset VkImageViewHandleInfoNVX, sType}

instance Offset "pNext" VkImageViewHandleInfoNVX where
  rawOffset = #{offset VkImageViewHandleInfoNVX, pNext}

instance Offset "imageView" VkImageViewHandleInfoNVX where
  rawOffset = #{offset VkImageViewHandleInfoNVX, imageView}

instance Offset "descriptorType" VkImageViewHandleInfoNVX where
  rawOffset = #{offset VkImageViewHandleInfoNVX, descriptorType}

instance Offset "sampler" VkImageViewHandleInfoNVX where
  rawOffset = #{offset VkImageViewHandleInfoNVX, sampler}

#else

module Vulkan.Types.Struct.VkImageViewHandleInfoNVX where

#endif