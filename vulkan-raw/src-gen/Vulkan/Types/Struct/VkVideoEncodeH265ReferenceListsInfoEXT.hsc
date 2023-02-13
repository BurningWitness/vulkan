{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265ReferenceListsInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265DpbSlotInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265ReferenceListsInfoEXT" #-} VkVideoEncodeH265ReferenceListsInfoEXT =
       VkVideoEncodeH265ReferenceListsInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , referenceList0EntryCount :: #{type uint8_t}
         , pReferenceList0Entries :: Ptr VkVideoEncodeH265DpbSlotInfoEXT
         , referenceList1EntryCount :: #{type uint8_t}
         , pReferenceList1Entries :: Ptr VkVideoEncodeH265DpbSlotInfoEXT
         , pReferenceModifications :: Ptr StdVideoEncodeH265ReferenceModifications
         }

instance Storable VkVideoEncodeH265ReferenceListsInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265ReferenceListsInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265ReferenceListsInfoEXT}

  peek ptr = 
    VkVideoEncodeH265ReferenceListsInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceList0EntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceList0Entries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceList1EntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceList1Entries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceModifications" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"referenceList0EntryCount" ptr val
    pokeField @"pReferenceList0Entries" ptr val
    pokeField @"referenceList1EntryCount" ptr val
    pokeField @"pReferenceList1Entries" ptr val
    pokeField @"pReferenceModifications" ptr val

instance Offset "sType" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, pNext}

instance Offset "referenceList0EntryCount" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, referenceList0EntryCount}

instance Offset "pReferenceList0Entries" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, pReferenceList0Entries}

instance Offset "referenceList1EntryCount" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, referenceList1EntryCount}

instance Offset "pReferenceList1Entries" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, pReferenceList1Entries}

instance Offset "pReferenceModifications" VkVideoEncodeH265ReferenceListsInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ReferenceListsInfoEXT, pReferenceModifications}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265ReferenceListsInfoEXT where

#endif