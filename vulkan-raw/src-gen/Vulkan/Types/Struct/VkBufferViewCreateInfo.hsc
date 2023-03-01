{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBufferViewCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBufferViewCreateFlags
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferViewCreateInfo" #-} VkBufferViewCreateInfo =
       VkBufferViewCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkBufferViewCreateFlags
         , buffer :: VkBuffer
         , format :: VkFormat -- ^ Optionally specifies format of elements
         , offset :: VkDeviceSize -- ^ Specified in bytes
         , range :: VkDeviceSize -- ^ View size specified in bytes
         }

instance Storable VkBufferViewCreateInfo where
  sizeOf    _ = #{size      VkBufferViewCreateInfo}
  alignment _ = #{alignment VkBufferViewCreateInfo}

  peek ptr = 
    VkBufferViewCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"range" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"buffer" ptr val
    pokeField @"format" ptr val
    pokeField @"offset" ptr val
    pokeField @"range" ptr val

instance Offset "sType" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, sType}

instance Offset "pNext" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, pNext}

instance Offset "flags" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, flags}

instance Offset "buffer" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, buffer}

instance Offset "format" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, format}

instance Offset "offset" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, offset}

instance Offset "range" VkBufferViewCreateInfo where
  rawOffset = #{offset VkBufferViewCreateInfo, range}