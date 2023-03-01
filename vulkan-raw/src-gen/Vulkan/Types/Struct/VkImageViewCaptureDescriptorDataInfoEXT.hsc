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

module Vulkan.Types.Struct.VkImageViewCaptureDescriptorDataInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewCaptureDescriptorDataInfoEXT" #-} VkImageViewCaptureDescriptorDataInfoEXT =
       VkImageViewCaptureDescriptorDataInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         }

instance Storable VkImageViewCaptureDescriptorDataInfoEXT where
  sizeOf    _ = #{size      VkImageViewCaptureDescriptorDataInfoEXT}
  alignment _ = #{alignment VkImageViewCaptureDescriptorDataInfoEXT}

  peek ptr = 
    VkImageViewCaptureDescriptorDataInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageView" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val

instance Offset "sType" VkImageViewCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkImageViewCaptureDescriptorDataInfoEXT, sType}

instance Offset "pNext" VkImageViewCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkImageViewCaptureDescriptorDataInfoEXT, pNext}

instance Offset "imageView" VkImageViewCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkImageViewCaptureDescriptorDataInfoEXT, imageView}

#else

module Vulkan.Types.Struct.VkImageViewCaptureDescriptorDataInfoEXT where

#endif