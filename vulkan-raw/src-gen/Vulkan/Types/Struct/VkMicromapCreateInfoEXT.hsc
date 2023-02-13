{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkMicromapCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkMicromapCreateFlagsEXT
import Vulkan.Types.Enum.VkMicromapTypeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapCreateInfoEXT" #-} VkMicromapCreateInfoEXT =
       VkMicromapCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , createFlags :: VkMicromapCreateFlagsEXT
         , buffer :: VkBuffer
         , offset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize
         , type_ :: VkMicromapTypeEXT
         , deviceAddress :: VkDeviceAddress
         }

instance Storable VkMicromapCreateInfoEXT where
  sizeOf    _ = #{size      VkMicromapCreateInfoEXT}
  alignment _ = #{alignment VkMicromapCreateInfoEXT}

  peek ptr = 
    VkMicromapCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"createFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"createFlags" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val
    pokeField @"type" ptr val
    pokeField @"deviceAddress" ptr val

instance Offset "sType" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, sType}

instance Offset "pNext" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, pNext}

instance Offset "createFlags" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, createFlags}

instance Offset "buffer" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, buffer}

instance Offset "offset" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, offset}

instance Offset "size" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, size}

instance Offset "type_" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, type}

instance Offset "deviceAddress" VkMicromapCreateInfoEXT where
  rawOffset = #{offset VkMicromapCreateInfoEXT, deviceAddress}

instance Offset "type" VkMicromapCreateInfoEXT where
  rawOffset = rawOffset @"type_" @VkMicromapCreateInfoEXT

instance HasField "type" VkMicromapCreateInfoEXT VkMicromapTypeEXT where
  getField = getField @"type_" @VkMicromapCreateInfoEXT

#else

module Vulkan.Types.Struct.VkMicromapCreateInfoEXT where

#endif