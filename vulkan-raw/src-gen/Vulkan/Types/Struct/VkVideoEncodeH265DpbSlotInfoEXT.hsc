{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265DpbSlotInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265DpbSlotInfoEXT" #-} VkVideoEncodeH265DpbSlotInfoEXT =
       VkVideoEncodeH265DpbSlotInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , slotIndex :: #{type int8_t}
         , pStdReferenceInfo :: Ptr StdVideoEncodeH265ReferenceInfo
         }

instance Storable VkVideoEncodeH265DpbSlotInfoEXT where
  sizeOf    _ = #{size      struct VkVideoEncodeH265DpbSlotInfoEXT}
  alignment _ = #{alignment struct VkVideoEncodeH265DpbSlotInfoEXT}

  peek ptr = 
    VkVideoEncodeH265DpbSlotInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"slotIndex" ptr)
       <*> peek (offset @"pStdReferenceInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"slotIndex" ptr val
    pokeField @"pStdReferenceInfo" ptr val

instance Offset "sType" VkVideoEncodeH265DpbSlotInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265DpbSlotInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265DpbSlotInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265DpbSlotInfoEXT, pNext}

instance Offset "slotIndex" VkVideoEncodeH265DpbSlotInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265DpbSlotInfoEXT, slotIndex}

instance Offset "pStdReferenceInfo" VkVideoEncodeH265DpbSlotInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265DpbSlotInfoEXT, pStdReferenceInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265DpbSlotInfoEXT where

#endif