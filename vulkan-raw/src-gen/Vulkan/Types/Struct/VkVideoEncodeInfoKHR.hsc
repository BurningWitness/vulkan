{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Struct.VkVideoEncodeInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR
import Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeInfoKHR" #-} VkVideoEncodeInfoKHR =
       VkVideoEncodeInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEncodeFlagsKHR
         , qualityLevel :: #{type uint32_t}
         , dstBitstreamBuffer :: VkBuffer
         , dstBitstreamBufferOffset :: VkDeviceSize
         , dstBitstreamBufferMaxRange :: VkDeviceSize
         , srcPictureResource :: VkVideoPictureResourceInfoKHR
         , pSetupReferenceSlot :: Ptr VkVideoReferenceSlotInfoKHR
         , referenceSlotCount :: #{type uint32_t}
         , pReferenceSlots :: Ptr VkVideoReferenceSlotInfoKHR
         , precedingExternallyEncodedBytes :: #{type uint32_t}
         }

instance Storable VkVideoEncodeInfoKHR where
  sizeOf    _ = #{size      VkVideoEncodeInfoKHR}
  alignment _ = #{alignment VkVideoEncodeInfoKHR}

  peek ptr = 
    VkVideoEncodeInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"qualityLevel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBitstreamBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBitstreamBufferOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBitstreamBufferMaxRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcPictureResource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSetupReferenceSlot" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceSlotCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceSlots" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"precedingExternallyEncodedBytes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"qualityLevel" ptr val
    pokeField @"dstBitstreamBuffer" ptr val
    pokeField @"dstBitstreamBufferOffset" ptr val
    pokeField @"dstBitstreamBufferMaxRange" ptr val
    pokeField @"srcPictureResource" ptr val
    pokeField @"pSetupReferenceSlot" ptr val
    pokeField @"referenceSlotCount" ptr val
    pokeField @"pReferenceSlots" ptr val
    pokeField @"precedingExternallyEncodedBytes" ptr val

instance Offset "sType" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, sType}

instance Offset "pNext" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, pNext}

instance Offset "flags" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, flags}

instance Offset "qualityLevel" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, qualityLevel}

instance Offset "dstBitstreamBuffer" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, dstBitstreamBuffer}

instance Offset "dstBitstreamBufferOffset" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, dstBitstreamBufferOffset}

instance Offset "dstBitstreamBufferMaxRange" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, dstBitstreamBufferMaxRange}

instance Offset "srcPictureResource" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, srcPictureResource}

instance Offset "pSetupReferenceSlot" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, pSetupReferenceSlot}

instance Offset "referenceSlotCount" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, referenceSlotCount}

instance Offset "pReferenceSlots" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, pReferenceSlots}

instance Offset "precedingExternallyEncodedBytes" VkVideoEncodeInfoKHR where
  rawOffset = #{offset VkVideoEncodeInfoKHR, precedingExternallyEncodedBytes}

#else

module Vulkan.Types.Struct.VkVideoEncodeInfoKHR where

#endif