{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSpecializationMapEntry where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkSpecializationMapEntry" #-} VkSpecializationMapEntry =
       VkSpecializationMapEntry
         { constantID :: #{type uint32_t} -- ^ The SpecConstant ID specified in the BIL
         , offset :: #{type uint32_t} -- ^ Offset of the value in the data block
         , size :: #{type size_t} -- ^ Size in bytes of the SpecConstant
         }

instance Storable VkSpecializationMapEntry where
  sizeOf    _ = #{size      struct VkSpecializationMapEntry}
  alignment _ = #{alignment struct VkSpecializationMapEntry}

  peek ptr = 
    VkSpecializationMapEntry
       <$> peek (offset @"constantID" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"constantID" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val

instance Offset "constantID" VkSpecializationMapEntry where
  rawOffset = #{offset struct VkSpecializationMapEntry, constantID}

instance Offset "offset" VkSpecializationMapEntry where
  rawOffset = #{offset struct VkSpecializationMapEntry, offset}

instance Offset "size" VkSpecializationMapEntry where
  rawOffset = #{offset struct VkSpecializationMapEntry, size}