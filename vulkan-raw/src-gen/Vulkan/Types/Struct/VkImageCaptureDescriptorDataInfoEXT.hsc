{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkImageCaptureDescriptorDataInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImageCaptureDescriptorDataInfoEXT" #-} VkImageCaptureDescriptorDataInfoEXT =
       VkImageCaptureDescriptorDataInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         }

instance Storable VkImageCaptureDescriptorDataInfoEXT where
  sizeOf    _ = #{size      struct VkImageCaptureDescriptorDataInfoEXT}
  alignment _ = #{alignment struct VkImageCaptureDescriptorDataInfoEXT}

  peek ptr = 
    VkImageCaptureDescriptorDataInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val

instance Offset "sType" VkImageCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset struct VkImageCaptureDescriptorDataInfoEXT, sType}

instance Offset "pNext" VkImageCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset struct VkImageCaptureDescriptorDataInfoEXT, pNext}

instance Offset "image" VkImageCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset struct VkImageCaptureDescriptorDataInfoEXT, image}

#else

module Vulkan.Types.Struct.VkImageCaptureDescriptorDataInfoEXT where

#endif