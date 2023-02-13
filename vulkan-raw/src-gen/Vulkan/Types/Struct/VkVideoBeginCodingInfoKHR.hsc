{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoBeginCodingFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoBeginCodingInfoKHR" #-} VkVideoBeginCodingInfoKHR =
       VkVideoBeginCodingInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoBeginCodingFlagsKHR
         , videoSession :: VkVideoSessionKHR
         , videoSessionParameters :: VkVideoSessionParametersKHR
         , referenceSlotCount :: #{type uint32_t}
         , pReferenceSlots :: Ptr VkVideoReferenceSlotInfoKHR
         }

instance Storable VkVideoBeginCodingInfoKHR where
  sizeOf    _ = #{size      VkVideoBeginCodingInfoKHR}
  alignment _ = #{alignment VkVideoBeginCodingInfoKHR}

  peek ptr = 
    VkVideoBeginCodingInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"videoSession" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"videoSessionParameters" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceSlotCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceSlots" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"videoSession" ptr val
    pokeField @"videoSessionParameters" ptr val
    pokeField @"referenceSlotCount" ptr val
    pokeField @"pReferenceSlots" ptr val

instance Offset "sType" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, sType}

instance Offset "pNext" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, pNext}

instance Offset "flags" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, flags}

instance Offset "videoSession" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, videoSession}

instance Offset "videoSessionParameters" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, videoSessionParameters}

instance Offset "referenceSlotCount" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, referenceSlotCount}

instance Offset "pReferenceSlots" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset VkVideoBeginCodingInfoKHR, pReferenceSlots}

#else

module Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR where

#endif