{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264ReferenceListsInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH264DpbSlotInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264ReferenceListsInfoEXT" #-} VkVideoEncodeH264ReferenceListsInfoEXT =
       VkVideoEncodeH264ReferenceListsInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , referenceList0EntryCount :: #{type uint8_t}
         , pReferenceList0Entries :: Ptr VkVideoEncodeH264DpbSlotInfoEXT
         , referenceList1EntryCount :: #{type uint8_t}
         , pReferenceList1Entries :: Ptr VkVideoEncodeH264DpbSlotInfoEXT
         , pMemMgmtCtrlOperations :: Ptr StdVideoEncodeH264RefMemMgmtCtrlOperations
         }

instance Storable VkVideoEncodeH264ReferenceListsInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264ReferenceListsInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264ReferenceListsInfoEXT}

  peek ptr = 
    VkVideoEncodeH264ReferenceListsInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceList0EntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceList0Entries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceList1EntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceList1Entries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pMemMgmtCtrlOperations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"referenceList0EntryCount" ptr val
    pokeField @"pReferenceList0Entries" ptr val
    pokeField @"referenceList1EntryCount" ptr val
    pokeField @"pReferenceList1Entries" ptr val
    pokeField @"pMemMgmtCtrlOperations" ptr val

instance Offset "sType" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, pNext}

instance Offset "referenceList0EntryCount" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, referenceList0EntryCount}

instance Offset "pReferenceList0Entries" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, pReferenceList0Entries}

instance Offset "referenceList1EntryCount" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, referenceList1EntryCount}

instance Offset "pReferenceList1Entries" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, pReferenceList1Entries}

instance Offset "pMemMgmtCtrlOperations" VkVideoEncodeH264ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ReferenceListsInfoEXT, pMemMgmtCtrlOperations}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264ReferenceListsInfoEXT where

#endif