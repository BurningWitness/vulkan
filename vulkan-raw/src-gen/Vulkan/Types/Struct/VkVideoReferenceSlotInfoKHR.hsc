{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoReferenceSlotInfoKHR" #-} VkVideoReferenceSlotInfoKHR =
       VkVideoReferenceSlotInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , slotIndex :: #{type int32_t} -- ^ The reference slot index
         , pPictureResource :: Ptr VkVideoPictureResourceInfoKHR -- ^ The reference picture resource
         }

instance Storable VkVideoReferenceSlotInfoKHR where
  sizeOf    _ = #{size      VkVideoReferenceSlotInfoKHR}
  alignment _ = #{alignment VkVideoReferenceSlotInfoKHR}

  peek ptr = 
    VkVideoReferenceSlotInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"slotIndex" ptr)
       <*> peek (offset @"pPictureResource" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"slotIndex" ptr val
    pokeField @"pPictureResource" ptr val

instance Offset "sType" VkVideoReferenceSlotInfoKHR where
  rawOffset = #{offset VkVideoReferenceSlotInfoKHR, sType}

instance Offset "pNext" VkVideoReferenceSlotInfoKHR where
  rawOffset = #{offset VkVideoReferenceSlotInfoKHR, pNext}

instance Offset "slotIndex" VkVideoReferenceSlotInfoKHR where
  rawOffset = #{offset VkVideoReferenceSlotInfoKHR, slotIndex}

instance Offset "pPictureResource" VkVideoReferenceSlotInfoKHR where
  rawOffset = #{offset VkVideoReferenceSlotInfoKHR, pPictureResource}

#else

module Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR where

#endif