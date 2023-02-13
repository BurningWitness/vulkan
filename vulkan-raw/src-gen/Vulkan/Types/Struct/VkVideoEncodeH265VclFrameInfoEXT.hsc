{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265VclFrameInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265NaluSliceSegmentInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265ReferenceListsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265VclFrameInfoEXT" #-} VkVideoEncodeH265VclFrameInfoEXT =
       VkVideoEncodeH265VclFrameInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pReferenceFinalLists :: Ptr VkVideoEncodeH265ReferenceListsInfoEXT
         , naluSliceSegmentEntryCount :: #{type uint32_t}
         , pNaluSliceSegmentEntries :: Ptr VkVideoEncodeH265NaluSliceSegmentInfoEXT
         , pCurrentPictureInfo :: Ptr StdVideoEncodeH265PictureInfo
         }

instance Storable VkVideoEncodeH265VclFrameInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265VclFrameInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265VclFrameInfoEXT}

  peek ptr = 
    VkVideoEncodeH265VclFrameInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceFinalLists" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"naluSliceSegmentEntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNaluSliceSegmentEntries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCurrentPictureInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pReferenceFinalLists" ptr val
    pokeField @"naluSliceSegmentEntryCount" ptr val
    pokeField @"pNaluSliceSegmentEntries" ptr val
    pokeField @"pCurrentPictureInfo" ptr val

instance Offset "sType" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, pNext}

instance Offset "pReferenceFinalLists" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, pReferenceFinalLists}

instance Offset "naluSliceSegmentEntryCount" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, naluSliceSegmentEntryCount}

instance Offset "pNaluSliceSegmentEntries" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, pNaluSliceSegmentEntries}

instance Offset "pCurrentPictureInfo" VkVideoEncodeH265VclFrameInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265VclFrameInfoEXT, pCurrentPictureInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265VclFrameInfoEXT where

#endif