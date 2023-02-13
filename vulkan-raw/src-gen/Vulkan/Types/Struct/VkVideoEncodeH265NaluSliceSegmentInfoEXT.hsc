{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265NaluSliceSegmentInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265ReferenceListsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265NaluSliceSegmentInfoEXT" #-} VkVideoEncodeH265NaluSliceSegmentInfoEXT =
       VkVideoEncodeH265NaluSliceSegmentInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , ctbCount :: #{type uint32_t}
         , pReferenceFinalLists :: Ptr VkVideoEncodeH265ReferenceListsInfoEXT
         , pSliceSegmentHeaderStd :: Ptr StdVideoEncodeH265SliceSegmentHeader
         }

instance Storable VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265NaluSliceSegmentInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265NaluSliceSegmentInfoEXT}

  peek ptr = 
    VkVideoEncodeH265NaluSliceSegmentInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"ctbCount" ptr)
       <*> peek (offset @"pReferenceFinalLists" ptr)
       <*> peek (offset @"pSliceSegmentHeaderStd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"ctbCount" ptr val
    pokeField @"pReferenceFinalLists" ptr val
    pokeField @"pSliceSegmentHeaderStd" ptr val

instance Offset "sType" VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265NaluSliceSegmentInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265NaluSliceSegmentInfoEXT, pNext}

instance Offset "ctbCount" VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265NaluSliceSegmentInfoEXT, ctbCount}

instance Offset "pReferenceFinalLists" VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265NaluSliceSegmentInfoEXT, pReferenceFinalLists}

instance Offset "pSliceSegmentHeaderStd" VkVideoEncodeH265NaluSliceSegmentInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265NaluSliceSegmentInfoEXT, pSliceSegmentHeaderStd}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265NaluSliceSegmentInfoEXT where

#endif