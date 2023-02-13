{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265DpbSlotInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265DpbSlotInfoKHR" #-} VkVideoDecodeH265DpbSlotInfoKHR =
       VkVideoDecodeH265DpbSlotInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pStdReferenceInfo :: Ptr StdVideoDecodeH265ReferenceInfo
         }

instance Storable VkVideoDecodeH265DpbSlotInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH265DpbSlotInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH265DpbSlotInfoKHR}

  peek ptr = 
    VkVideoDecodeH265DpbSlotInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdReferenceInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pStdReferenceInfo" ptr val

instance Offset "sType" VkVideoDecodeH265DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265DpbSlotInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH265DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265DpbSlotInfoKHR, pNext}

instance Offset "pStdReferenceInfo" VkVideoDecodeH265DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265DpbSlotInfoKHR, pStdReferenceInfo}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265DpbSlotInfoKHR where

#endif