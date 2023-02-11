{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkVideoPictureResourceInfoKHR" #-} VkVideoPictureResourceInfoKHR =
       VkVideoPictureResourceInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , codedOffset :: VkOffset2D -- ^ The offset to be used for the picture resource, currently only used in field mode
         , codedExtent :: VkExtent2D -- ^ The extent to be used for the picture resource
         , baseArrayLayer :: #{type uint32_t} -- ^ The first array layer to be accessed for the Decode or Encode Operations
         , imageViewBinding :: VkImageView -- ^ The ImageView binding of the resource
         }

instance Storable VkVideoPictureResourceInfoKHR where
  sizeOf    _ = #{size      struct VkVideoPictureResourceInfoKHR}
  alignment _ = #{alignment struct VkVideoPictureResourceInfoKHR}

  peek ptr = 
    VkVideoPictureResourceInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"codedOffset" ptr)
       <*> peek (offset @"codedExtent" ptr)
       <*> peek (offset @"baseArrayLayer" ptr)
       <*> peek (offset @"imageViewBinding" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"codedOffset" ptr val
    pokeField @"codedExtent" ptr val
    pokeField @"baseArrayLayer" ptr val
    pokeField @"imageViewBinding" ptr val

instance Offset "sType" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, sType}

instance Offset "pNext" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, pNext}

instance Offset "codedOffset" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, codedOffset}

instance Offset "codedExtent" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, codedExtent}

instance Offset "baseArrayLayer" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, baseArrayLayer}

instance Offset "imageViewBinding" VkVideoPictureResourceInfoKHR where
  rawOffset = #{offset struct VkVideoPictureResourceInfoKHR, imageViewBinding}

#else

module Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR where

#endif